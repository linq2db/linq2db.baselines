BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Value4 Raw(16) -- Binary
SET     @Value4 = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @id Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" t1
SET
	"Value4" = :Value4
WHERE
	t1."Id" = :id

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."Value4"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Value4 Raw(16) -- Binary
SET     @Value4 = HEXTORAW('0D6048A921DE744F8AC29516B287076E')
DECLARE @id Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" t1
SET
	"Value4" = :Value4
WHERE
	t1."Id" = :id

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."Value4"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id AND ROWNUM <= 2

