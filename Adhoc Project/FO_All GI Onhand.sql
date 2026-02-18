SELECT 
	i.dataareaid,
	i.inventlocationid, 
	i.itemid,ti.ItemName, 
	i.inventserialid, 
	i.availphysical, 
	ti.[Material Code], 
	ti.ReferenceId , 
	ti.[Search Name], 
	tfdvs.GroupCategoryName,
	tfdvs.GroupCategoryCode, 
	tfdvs.CategoryName,
	tfdvs.CategoryCode, 
	tfdvs.SubCategoryName,
	tfdvs.SubCategoryCode 
FROM D365FO_DATALAKE.dbo.inventsum as i 
LEFT JOIN syndpdev001.dbo.tm_Item ti 
LEFT JOIN syndpdev001.dbo.tm_FinDimValueSet tfdvs 
ON ti.DefaultDimension = tfdvs.FinancialDim 
ON i.itemid = ti.ItemId AND ti.SysCompanyId = 'GI'
WHERE i.dataareaid LIKE '%GI%'
AND i.availphysical <> 0
ORDER BY i.itemid , i.dataareaid, i.inventlocationid ASC