using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace Utils.ForwardedPrefix
{
    public class ForwardedPrefixMiddleware : IMiddleware
    {
        public async Task InvokeAsync(HttpContext context, RequestDelegate next)
        {
            if (context.Request.Headers.TryGetValue("X-Forwarded-Prefix", out var prefix))
            {
                context.Request.PathBase = new PathString(prefix);
            }

            if (context.Request.Headers.TryGetValue("X-Forwarded-Proto", out var protocol))
            {
                context.Request.Scheme = protocol;
            }

            await next(context);
        }
    }
}