# uri = URI.parse(ENV["REDIS_URL"] || "redis://localhost:6379/")
# REDIS = Redis.new(:url => uri)

# REDIS = Redis.new( host: (ENV['REDIS_PORT_6379_TCP_ADDR'] || 'localhost'),
#                    port: (ENV['REDIS_PORT_6379_TCP_PORT'] || '6379'),
#                    password: (ENV['REDIS_PASSWORD'] || ''))

REDIS = if ENV['REDIS_PORT_6379_TCP_ADDR']
          Redis.new( host: ENV['REDIS_PORT_6379_TCP_ADDR'],
                     port: ENV['REDIS_PORT_6379_TCP_PORT'],
                     password: ENV['REDIS_PASSWORD'] )
        else
          Redis.new( url: "redis://localhost:6379/" )
        end
