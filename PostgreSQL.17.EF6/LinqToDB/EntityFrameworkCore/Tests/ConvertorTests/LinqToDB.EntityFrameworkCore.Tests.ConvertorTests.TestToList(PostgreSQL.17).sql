--  PostgreSQL.9.3 PostgreSQL
DECLARE @Id Bigint -- Int64
SET     @Id = 1
DECLARE @PermanentId Uuid -- Guid
SET     @PermanentId = '5f4ef910-13cf-47e7-917a-327b233b2160'::uuid
DECLARE @Code Text(2) -- String
SET     @Code = 'C1'
DECLARE @Name Text(2) -- String
SET     @Name = 'N1'
DECLARE @IsDeleted Boolean
SET     @IsDeleted = NULL

INSERT INTO "Subdivisions"
(
	"Id",
	"PermanentId",
	"Code",
	"Name",
	"IsDeleted"
)
VALUES
(
	:Id,
	:PermanentId,
	:Code,
	:Name,
	:IsDeleted
)
RETURNING 
	"Id"



--  PostgreSQL.9.3 PostgreSQL
DECLARE @Id Bigint -- Int64
SET     @Id = 2
DECLARE @PermanentId Uuid -- Guid
SET     @PermanentId = '7b221743-e6f6-4c98-9269-a7c9e5b958e5'::uuid
DECLARE @Code Text(2) -- String
SET     @Code = 'C2'
DECLARE @Name Text(2) -- String
SET     @Name = 'N2'
DECLARE @IsDeleted Boolean
SET     @IsDeleted = NULL

INSERT INTO "Subdivisions"
(
	"Id",
	"PermanentId",
	"Code",
	"Name",
	"IsDeleted"
)
VALUES
(
	:Id,
	:PermanentId,
	:Code,
	:Name,
	:IsDeleted
)
RETURNING 
	"Id"



--  PostgreSQL.9.3 PostgreSQL
DECLARE @Id Bigint -- Int64
SET     @Id = 3
DECLARE @PermanentId Uuid -- Guid
SET     @PermanentId = 'c92ec0bd-9bb6-4861-a216-04ee9887baa1'::uuid
DECLARE @Code Text(2) -- String
SET     @Code = 'C3'
DECLARE @Name Text(2) -- String
SET     @Name = 'N3'
DECLARE @IsDeleted Boolean
SET     @IsDeleted = NULL

INSERT INTO "Subdivisions"
(
	"Id",
	"PermanentId",
	"Code",
	"Name",
	"IsDeleted"
)
VALUES
(
	:Id,
	:PermanentId,
	:Code,
	:Name,
	:IsDeleted
)
RETURNING 
	"Id"



SELECT s."Id", s."Code", s."IsDeleted", s."Name", s."PermanentId"
FROM "Subdivisions" AS s
WHERE s."Id"::bigint = 1


--  PostgreSQL.9.3 PostgreSQL

SELECT
	s."Id",
	s."PermanentId",
	s."Code",
	s."Name",
	s."IsDeleted"
FROM
	"Subdivisions" s
WHERE
	s."Id"::BigInt = 1



--  PostgreSQL.9.3 PostgreSQL
DECLARE @id Bigint -- Int64
SET     @id = 1

SELECT
	s."Id",
	s."PermanentId",
	s."Code",
	s."Name",
	s."IsDeleted"
FROM
	"Subdivisions" s
WHERE
	s."Id" = :id



--  PostgreSQL.9.3 PostgreSQL

SELECT
	s."Id",
	s."PermanentId",
	s."Code",
	s."Name",
	s."IsDeleted"
FROM
	"Subdivisions" s
WHERE
	s."Id" IN (2, 3)



--  PostgreSQL.9.3 PostgreSQL

SELECT
	t1."Id",
	t1."PermanentId",
	t1."Code",
	t1."Name",
	t1."IsDeleted"
FROM
	"Subdivisions" t1



