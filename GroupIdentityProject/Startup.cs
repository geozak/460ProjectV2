using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GroupIdentityProject.Startup))]
namespace GroupIdentityProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
