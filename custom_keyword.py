# Example custom keyword file: custom_keywords.py

from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword



def custom_login(standard_user, secret_sauce):
    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
    selenium_lib.input_text("//input[@id='user-name']", standard_user)
    selenium_lib.input_text("//input[@id='password']", secret_sauce)
    selenium_lib.click_button("//input[@id='login-button']")

def custom_verify_text(expected_text):
    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
    actual_text = selenium_lib.get_text("//div[@class='product_label']")
    assert actual_text == expected_text, f"Expected text '{expected_text}' but got '{actual_text}'"



@keyword
def check_product_availability(product_name):
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    product_locator = f"//div[@class='inventory_item_name' and text()='{product_name}']"
    try:
        seleniumlib.wait_until_element_is_visible(product_locator, timeout=5)
        return f"{product_name} is in stock"
    except:
        return f"{product_name} is out of stock"


@keyword
def add_product_to_cart_if_available(product_name):
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    product_locator = f"//div[@class='inventory_item_name' and text()='{product_name}']"
    add_to_cart_button_locator = f"{product_locator}//ancestor::div[@class='inventory_item']//button[@class='btn_primary btn_inventory']"

    if seleniumlib.get_element_count(product_locator) > 0:
        seleniumlib.click_element(add_to_cart_button_locator)
        return f"{product_name} added to cart successfully"
    else:
        return f"{product_name} is out of stock and cannot be added to cart"







# def buy_products(button):
#     selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
#     inventry1 = "//*[@id='inventory_container']/div/div[1]/div[3]/div"
#     inventry2 = "//*[@id='inventory_container']/div/div[2]/div[3]/div"
#     inventry3 = "//*[@id='inventory_container']/div/div[3]/div[3]/div"
#     inventry4 = "//*[@id='inventory_container']/div/div[4]/div[3]/div"
#     inventry5 = "//*[@id='inventory_container']/div/div[5]/div[3]/div"
#     inventry6 = "//*[@id='inventory_container']/div/div[6]/div[3]/div"
#
#     button = selenium_lib.click_button("//*[@id='inventory_container']/div/div[5]/div[3]/button")
#     if (inventry1, inventry2, inventry3, inventry4, inventry5, inventry6)  <=10:
#         button = selenium_lib.click_button("//*[@id='inventory_container']/div/div[5]/div[3]/button")
#     else:
#         assert
