ORG_ALIAS=$1

sfdx force:source:push -u $ORG_ALIAS

sfdx force:user:permset:assign -n dreamhouse -u $ORG_ALIAS

sfdx force:user:permset:assign -n Walkthroughs -u $ORG_ALIAS

sfdx force:data:tree:import -p data/sample-data-plan.json -u $ORG_ALIAS

echo "$ORG_ALIAS is set!"
