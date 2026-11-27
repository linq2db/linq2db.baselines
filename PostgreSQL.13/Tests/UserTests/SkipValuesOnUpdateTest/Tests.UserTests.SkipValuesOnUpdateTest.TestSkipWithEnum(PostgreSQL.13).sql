-- PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(3) -- String
SET     @Name = 'Max'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Gender Text(6) -- String
SET     @Gender = 'Female'

INSERT INTO "SkipOnUpdateEnum"
(
	"Id",
	"Name",
	"Age",
	"Gender"
)
VALUES
(
	:Id,
	:Name,
	:Age,
	:Gender
)

-- PostgreSQL.13 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"SkipOnUpdateEnum" t
WHERE
	t."Id" = 1
LIMIT 1

-- PostgreSQL.13 PostgreSQL12
DECLARE @Name Text(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Gender Text(4) -- String
SET     @Gender = 'Male'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SkipOnUpdateEnum"
SET
	"Name" = :Name,
	"Age" = :Age,
	"Gender" = :Gender
WHERE
	"SkipOnUpdateEnum"."Id" = :Id

-- PostgreSQL.13 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"SkipOnUpdateEnum" t
WHERE
	t."Id" = 1
LIMIT 1

-- PostgreSQL.13 PostgreSQL12
DECLARE @Name Text(8) -- String
SET     @Name = 'Francine'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SkipOnUpdateEnum"
SET
	"Name" = :Name,
	"Age" = :Age
WHERE
	"SkipOnUpdateEnum"."Id" = :Id

-- PostgreSQL.13 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age",
	t."Gender"
FROM
	"SkipOnUpdateEnum" t
WHERE
	t."Id" = 1
LIMIT 1

