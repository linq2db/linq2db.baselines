-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 123
DECLARE $Nesto Text(5) -- String
SET     $Nesto = 'Nesto'u
DECLARE $Nest Text(6) -- String
SET     $Nest = 'Nessss'u
DECLARE $Whatsov Text(7) -- String
SET     $Whatsov = 'Whatsov'u
DECLARE $Co2Grund Text(3) -- String
SET     $Co2Grund = 'xxx'u
DECLARE $Co2Aend Text(4) -- String
SET     $Co2Aend = 'What'u

INSERT INTO Issue3834Table
(
	Id,
	Nesto,
	Nest,
	WhatSov,
	Co2grund,
	Co2aend
)
VALUES
(
	$Id,
	$Nesto,
	$Nest,
	$Whatsov,
	$Co2Grund,
	$Co2Aend
)
RETURNING
	Id,
	Nesto,
	Nest,
	WhatSov,
	Co2grund,
	Co2aend

