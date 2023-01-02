# UIBinding

### This is a swift package that allows data binding of UIControl which is a crucial part of MVVM Architecture.

##### Usage:

1. First create a model for UIControl. Here, we are creating model for a textfield. It needs two types one the UIControl for which the data binding is to be done and the other is the type of the value that we are intrested in from the UIControl. Here UIControl is UITextField and the datatype is String. For UISwitch and UIButton it will be Boolean which will indicate if the buttons are on/off or selected or not. The initalization should be done in the ViewModel.
let textModel = UIControlBinding<UITextField, String>()

2. Next we need to bind the ControlBinder to the UIControlBinding. This can be done in viewDidLoad().
viewMoidel.textModel.bind(view.textField.binder())
Here, the binder function of textfield returns a ControlBinder Object.

3. Observing the values from the textModel can be done in viewDidLoad()
textModel.sink { value in
    print(value)
}.store(in: &screenView.bag)

4. Updating the UIControls from the bindings is done by setting new value to the value of binding.
textModel.value = "New Text"

