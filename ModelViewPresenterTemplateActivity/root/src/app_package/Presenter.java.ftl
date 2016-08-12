package ${packageName};

public class ${className}Presenter extends BasePresenter<${className}Contract.View> implements ${className}Contract.Presenter{
    private static final int ${className} = 0;

    public ${className}Presenter(@Named("${className}") UseCase useCase${className}) {
        registerUserCase(${className}, useCase${className});
    }
}