﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SomeText NVarchar2(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO "Issue1622Table"
(
	"Id",
	"SomeText"
)
VALUES
(
	:Id,
	:SomeText
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."SomeText"
FROM
	"Issue1622Table" e
WHERE
	e."SomeText" = 'Value1_suffix'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."SomeText"
FROM
	"Issue1622Table" e
WHERE
	e."Id" = 1
FETCH NEXT 2 ROWS ONLY

