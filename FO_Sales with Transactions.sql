SELECT *
FROM PROJECT_1.dbo.Transaction_FO tf 
INNER JOIN syndpdev001.dbo.tb_SalesInvoice tsi 
ON tf.CompanyCode = tsi.SysCompanyId 
AND tf.[Ref.DocNum] = tsi.SalesId 
AND tf.[FO-ITEMNO] = tsi.ItemId 
WHERE tf.CompanyCode = 'bnn'
--AND tf.INVENTLOCATIONID = '79006'
AND tsi.InvoiceDate >= '2026-01-01' --Date from
AND tsi.InvoiceDate <= '2026-01-31' --Date to
ORDER BY tsi.SalesId ASC, tsi.[LineNo] ASC

--Test comment
--Another Test Comment