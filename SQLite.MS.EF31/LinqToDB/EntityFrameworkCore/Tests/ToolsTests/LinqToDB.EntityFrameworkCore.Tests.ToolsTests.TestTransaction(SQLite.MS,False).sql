Parameters:
@__ef_filter__p_0='?'

SELECT MAX("p"."QuantityPerUnit")
FROM "Products" AS "p"
WHERE (@__ef_filter__p_0 OR NOT ("p"."IsDeleted")) AND ("p"."ProductName" LIKE 'U%')


