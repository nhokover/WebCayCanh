using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebCayCanhNew2.Startup))]
namespace WebCayCanhNew2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
