BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "SampleClass"
(
	"Id"        Int NOT NULL,
	"NullValue" Int     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	a."Id",
	a."NullValue"
FROM
	"SampleClass" a
WHERE
	(a."Id" = 0 AND Nvl(a."NullValue", 0) = 0 OR a."Id" = 1 AND Nvl(a."NullValue", 0) = 1 OR a."Id" = 2 AND Nvl(a."NullValue", 0) = 2)

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "SampleClass"

