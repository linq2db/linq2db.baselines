﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @LastName Text(8) -- String
SET     @LastName = 'LastName'
DECLARE @Gender Text(1) -- String
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

