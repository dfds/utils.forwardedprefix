using Utils.ForwardedPrefix;

namespace Microsoft.AspNetCore.Builder
{
    public static class ForwardedPrefixApplicationBuilderExtensions
    {
        public static IApplicationBuilder UseForwardedPrefixAsBasePath(this IApplicationBuilder builder)
        {
            return builder.UseMiddleware<ForwardedPrefixMiddleware>();
        }
    }
}