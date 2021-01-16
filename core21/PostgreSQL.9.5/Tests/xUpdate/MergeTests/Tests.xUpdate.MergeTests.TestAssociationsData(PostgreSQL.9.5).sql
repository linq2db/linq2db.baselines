BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Patient" t1

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Doctor" t1

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Person" t1

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(7) -- String
SET     @FirstName = 'first 1'
DECLARE @LastName Text(6) -- String
SET     @LastName = 'last 1'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Text(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)
RETURNING 
	"PersonID"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(7) -- String
SET     @FirstName = 'first 2'
DECLARE @LastName Text(6) -- String
SET     @LastName = 'last 2'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Text(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)
RETURNING 
	"PersonID"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(7) -- String
SET     @FirstName = 'first 3'
DECLARE @LastName Text(6) -- String
SET     @LastName = 'last 3'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Text(1) -- AnsiStringFixedLength
SET     @Gender = 'O'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)
RETURNING 
	"PersonID"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(7) -- String
SET     @FirstName = 'first 4'
DECLARE @LastName Text(6) -- String
SET     @LastName = 'last 4'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Text(1) -- AnsiStringFixedLength
SET     @Gender = 'U'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)
RETURNING 
	"PersonID"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(7) -- String
SET     @FirstName = 'first 5'
DECLARE @LastName Text(6) -- String
SET     @LastName = 'last 5'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Text(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)
RETURNING 
	"PersonID"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(7) -- String
SET     @FirstName = 'first 6'
DECLARE @LastName Text(6) -- String
SET     @LastName = 'last 6'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Text(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)
RETURNING 
	"PersonID"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 9
DECLARE @Taxonomy Text(10) -- String
SET     @Taxonomy = 'Dr. Lector'

INSERT INTO "Doctor"
(
	"PersonID",
	"Taxonomy"
)
VALUES
(
	:PersonID,
	:Taxonomy
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 10
DECLARE @Taxonomy Text(10) -- String
SET     @Taxonomy = 'Dr. who???'

INSERT INTO "Doctor"
(
	"PersonID",
	"Taxonomy"
)
VALUES
(
	:PersonID,
	:Taxonomy
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 7
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'sick'

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 8
DECLARE @Diagnosis Text(9) -- String
SET     @Diagnosis = 'very sick'

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)

