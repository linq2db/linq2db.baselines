-- PostgreSQL.19 PostgreSQL12
DECLARE @p Text(2) -- String
SET     @p = 'x:'
DECLARE @suffix Text(2) -- String
SET     @suffix = '-s'

UPDATE
	"ConvertedTargetRow"
SET
	"Conv" = Coalesce(:p, '') || "ConvertedTargetRow"."Sku" || Coalesce(:suffix, '')

