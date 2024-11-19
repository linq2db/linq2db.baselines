--  PostgreSQL.9.3 PostgreSQL

CREATE TEMPORARY TABLE "Issue4666Temp"
(
	"Id"              integer  NOT NULL,
	"Description"     text         NULL,
	"Type"            integer  NOT NULL,
	"Type1EntityProp" text         NULL,

	CONSTRAINT "PK_Issue4666Temp" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS



--  PostgreSQL.9.3 PostgreSQL

INSERT INTO "Issue4666Temp"
(
	"Description",
	"Type",
	"Type1EntityProp"
)
VALUES
('Test1',0,'Prop1'),
('Test2',0,'Prop2')



--  PostgreSQL.9.3 PostgreSQL

DROP TABLE "Issue4666Temp"



