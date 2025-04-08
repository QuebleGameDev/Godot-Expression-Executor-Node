# Godot-Expression-Executor-Node

A simple Godot addon which adds the **Expression Executor** node.

## How to install
1. Download the source code, and copy the `addons` folder directly into your Godot project folder
2. Open your project in Godot, and verify that the plugin is enabled *(Project Settings -> Plugins)*
3. You can now add an **Expression Executor** node to any scene!

## How to use
The **Expression Executor** node allows for doing just that; executing expressions.
An expression can be filled out in the inspector panel of an **Expression Executor**, and allows for *most* GDScript (see the [official documentation](https://docs.godotengine.org/en/stable/classes/class_expression.html) for details on what GDScript is allowed).

>NOTE: By default, the expression will be executed once when the node is ready. If you'd like to trigger the expression manually, call the `execute_expression()` method on the **Expression Executor**.

The **Expression Executor** also allows for custom inputs; basically just values assigned to specific keys that are useable from within the expression.
*Here's and example:*
1. Add an entry to your Expression Executor's custom inputs property.
2. Since it's a Dictionary entry, make the key a String, and the value an integer.
3. Finally, the key name of this entry should be "test", and the value should be **10**.

In order to use this custom input, our expression would look something like this:
![image](https://github.com/user-attachments/assets/4141269f-ac2f-48fb-8ae6-51cb66867005)

## Additional Notes
- You can call multiple methods inside 1 expression by placing each method inside an Array like so: `[print(0), print("hello")] # Will print "0", then "hello"`
