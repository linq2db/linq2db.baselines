BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3834Table"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3834Table"
(
	"Id"       Int  NOT NULL,
	"Nesto"    text NOT NULL,
	"Nest"     text NOT NULL,
	"WhatSov"  text NOT NULL,
	"Co2grund" text     NULL,
	"Co2aend"  text     NULL,

	CONSTRAINT "PK_Issue3834Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 123
DECLARE @Nesto Text(5) -- String
SET     @Nesto = 'Nesto'
DECLARE @Nest Text(6) -- String
SET     @Nest = 'Nessss'
DECLARE @Whatsov Text(7) -- String
SET     @Whatsov = 'Whatsov'
DECLARE @Co2Grund Text(3) -- String
SET     @Co2Grund = 'xxx'
DECLARE @Co2Aend Text(4) -- String
SET     @Co2Aend = 'What'

INSERT INTO "Issue3834Table"
(
	"Id",
	"Nesto",
	"Nest",
	"WhatSov",
	"Co2grund",
	"Co2aend"
)
VALUES
(
	:Id,
	:Nesto,
	:Nest,
	:Whatsov,
	:Co2Grund,
	:Co2Aend
)
RETURNING
	"Issue3834Table"."Id",
	"Issue3834Table"."Nesto",
	"Issue3834Table"."Nest",
	"Issue3834Table"."WhatSov",
	"Issue3834Table"."Co2grund",
	"Issue3834Table"."Co2aend"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3834Table"

