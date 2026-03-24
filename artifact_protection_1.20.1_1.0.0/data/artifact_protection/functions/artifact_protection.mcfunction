tag @s add artifact_checked

execute unless data entity @s Item.tag.boundArtifact unless data entity @s Item.tag.soulboundTo unless data entity @s Item.tag."prominent:soulbound"

data modify entity @s Owner set from entity @s Item.tag.boundArtifact
data modify entity @s Owner set from entity @s Item.tag.soulboundTo

execute if data entity @s Owner run data merge entity @s {Age:-32768s, Invulnerable:1b}
