widdershins onchain.yml --summary --expandBody -o source/index.html.md 
bundle exec middleman build --clean
cp build/index.html ../OnchainCrystal/public/api-docs
cp onchain.yml ../OnchainCrystal/public/api-docs