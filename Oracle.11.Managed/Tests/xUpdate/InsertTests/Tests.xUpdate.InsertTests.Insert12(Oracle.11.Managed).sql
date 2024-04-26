﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @FirstName Varchar2(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'LastName'
DECLARE @Gender Varchar2(1) -- String
SET     @Gender = 'F'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:Gender
)

