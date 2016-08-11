package ${packageName};
import dagger.Module;
import dagger.Provides;
@Module
public class ${className}Module {
    @Provides
    public ${className}Contract.Presenter provide${className}Presenter(){return new ${className}Presenter();}
}
