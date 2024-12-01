<#if field$fluid.startsWith("CUSTOM:")>
<#assign fluid = field$fluid?replace("CUSTOM:", "")>
${JavaModName}Fluids.${fluid?ends_with(":Flowing")?then("FLOWING_","")}${generator.getRegistryNameForModElement(fluid?remove_ending(":Flowing"))?upper_case}
<#else>
Fluids.${generator.map(field$fluid, "fluids")}
</#if>