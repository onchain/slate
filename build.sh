# I don't like that we exampnd the enums, so let's replace them.
sed -e 's/$ref.*coin.*/type: string/g' onchain.yml > onchain.edited.yml

widdershins onchain.edited.yml --summary --expandBody -o source/index.html.md 
bundle exec middleman build --clean
cp build/index.html ../OnchainCrystal/public/api-docs
cp onchain.yml ../OnchainCrystal/public/api-docs
api-spec-converter onchain.edited.yml --from=openapi_3 --to=swagger_2 --syntax=yaml > ../OnchainCrystal/public/api-docs/onchain-swagger-v2.yaml

rm onchain.edited.yml