from django.core.cache import cache

def main():
    # Clear the cache
    cache.clear()
    print("Cache cleared successfully.")

if __name__ == "__main__":
    main()