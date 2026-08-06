-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 123
DECLARE @Nesto VarChar(5) -- String
SET     @Nesto = 'Nesto'
DECLARE @Nest VarChar(6) -- String
SET     @Nest = 'Nessss'
DECLARE @Whatsov VarChar(7) -- String
SET     @Whatsov = 'Whatsov'
DECLARE @Co2Grund VarChar(3) -- String
SET     @Co2Grund = 'xxx'
DECLARE @Co2Aend VarChar(4) -- String
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
	@Id,
	@Nesto,
	@Nest,
	@Whatsov,
	@Co2Grund,
	@Co2Aend
)
RETURNING
	"Issue3834Table"."Id",
	"Issue3834Table"."Nesto",
	"Issue3834Table"."Nest",
	"Issue3834Table"."WhatSov",
	"Issue3834Table"."Co2grund",
	"Issue3834Table"."Co2aend"

