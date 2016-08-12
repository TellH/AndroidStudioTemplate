package ${packageName};
import dagger.Module;
import dagger.Provides;
@Module
public class ${className}Module {
    @Provides
    public GetUserListContract.Presenter provideGetUserListPresenter(@Named("${className}") UseCase useCase${className}) {
        return new GetUserListPresenter(useCase${className});
    }

    @Provides
    @Named("${className}")
    public UseCase provideGetUserListUseCase() {
        return new GetUserListUseCase();
    }
}
