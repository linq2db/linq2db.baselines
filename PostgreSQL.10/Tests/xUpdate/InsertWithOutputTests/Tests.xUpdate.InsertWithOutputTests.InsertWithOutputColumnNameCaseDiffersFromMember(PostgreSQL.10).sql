-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

INSERT INTO "OutputColumnRenamedTable"
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
	"OutputColumnRenamedTable"."Id",
	"OutputColumnRenamedTable"."Nesto",
	"OutputColumnRenamedTable"."Nest",
	"OutputColumnRenamedTable"."WhatSov",
	"OutputColumnRenamedTable"."Co2grund",
	"OutputColumnRenamedTable"."Co2aend"

