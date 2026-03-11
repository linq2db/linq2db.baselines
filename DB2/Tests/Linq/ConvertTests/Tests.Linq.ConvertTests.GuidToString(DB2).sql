-- DB2 DB2.LUW DB2LUW
DECLARE @guid VarChar(36) -- String
SET     @guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	"t"."GuidValue"
FROM
	"LinqDataTypes" "t"
WHERE
	Lower(Lower(substr(hex("t"."GuidValue"), 7, 2) || substr(hex("t"."GuidValue"), 5, 2) || substr(hex("t"."GuidValue"), 3, 2) || substr(hex("t"."GuidValue"), 1, 2) || '-' || substr(hex("t"."GuidValue"), 11, 2) || substr(hex("t"."GuidValue"), 9, 2) || '-' || substr(hex("t"."GuidValue"), 15, 2) || substr(hex("t"."GuidValue"), 13, 2) || '-' || substr(hex("t"."GuidValue"), 17, 4) || '-' || substr(hex("t"."GuidValue"), 21, 12))) = @guid

