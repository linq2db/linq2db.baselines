BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Code Varchar2(5) -- String
SET     @Code = 'Child'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale Int16
SET     @IsMale = 0

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"IsMale"
)
VALUES
(
	:Code,
	:Id,
	:Name,
	:IsMale
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Code Varchar2(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2 -- String
SET     @Name = NULL
DECLARE @Age Int32
SET     @Age = 10

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"Age"
)
VALUES
(
	:Code,
	:Id,
	:Name,
	:Age
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	e."Code",
	e."Id",
	e."Name",
	e."IsMale",
	e."Age"
FROM
	"Base" e
WHERE
	CASE
		WHEN e."Code" = 'Child2' OR e."Code" = 'Child' OR e."Code" = 'BaseChild'
			THEN CASE
			WHEN e."Id" <> 0 THEN 1
			ELSE 0
		END
		WHEN e."Id" = 0 THEN 1
		ELSE 0
	END = 1
ORDER BY
	e."Id"

