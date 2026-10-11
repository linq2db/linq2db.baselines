-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @FirstName NVarchar2(4) -- String
SET     @FirstName = 'John'
DECLARE @MiddleName Varchar2(1) -- String
SET     @MiddleName = 'Q'
DECLARE @Age Int32
SET     @Age = 42

INSERT INTO "GeneratedScaffoldPerson"
(
	"PersonID",
	"FirstName",
	"MiddleName",
	"Age"
)
VALUES
(
	:Id,
	:FirstName,
	:MiddleName,
	:Age
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @FirstName NVarchar2(4) -- String
SET     @FirstName = 'Jane'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Age Int32
SET     @Age = NULL

INSERT INTO "GeneratedScaffoldPerson"
(
	"PersonID",
	"FirstName",
	"MiddleName",
	"Age"
)
VALUES
(
	:Id,
	:FirstName,
	:MiddleName,
	:Age
)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	p."PersonID",
	p."FirstName",
	p."MiddleName",
	p."Age"
FROM
	"GeneratedScaffoldPerson" p
WHERE
	p."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	p."PersonID",
	p."FirstName",
	p."MiddleName",
	p."Age"
FROM
	"GeneratedScaffoldPerson" p
WHERE
	p."PersonID" = 2
FETCH NEXT 2 ROWS ONLY

