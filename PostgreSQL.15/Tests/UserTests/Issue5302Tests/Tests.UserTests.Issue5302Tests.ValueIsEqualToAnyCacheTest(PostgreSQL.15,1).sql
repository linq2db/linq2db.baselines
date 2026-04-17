-- PostgreSQL.15 PostgreSQL
DECLARE @isActive Boolean
SET     @isActive = True
DECLARE @warehouseIds -2147483639 -- Object
SET     @warehouseIds = {10,20}

SELECT
	w."Id",
	w."ClearingWarehouseId",
	w."IsActive"
FROM
	"Warehouse" w
WHERE
	w."IsActive" = :isActive AND w."ClearingWarehouseId" = ANY(:warehouseIds)

