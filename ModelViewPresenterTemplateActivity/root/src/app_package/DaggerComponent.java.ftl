package ${packageName};
import dagger.Component;
@Component(modules = {${className}Module.class}, dependencies = {})
public interface ${className}Component {
    void inject(${className}Activity activity);
}
