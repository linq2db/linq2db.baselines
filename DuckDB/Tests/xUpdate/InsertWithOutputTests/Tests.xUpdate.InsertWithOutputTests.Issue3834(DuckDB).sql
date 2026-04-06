-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 123
DECLARE $Nesto NVarChar(5) -- String
SET     $Nesto = 'Nesto'
DECLARE $Nest NVarChar(6) -- String
SET     $Nest = 'Nessss'
DECLARE $Whatsov NVarChar(7) -- String
SET     $Whatsov = 'Whatsov'
DECLARE $Co2Grund NVarChar(3) -- String
SET     $Co2Grund = 'xxx'
DECLARE $Co2Aend NVarChar(4) -- String
SET     $Co2Aend = 'What'

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
	CAST($Id AS INTEGER),
	CAST($Nesto AS VARCHAR),
	CAST($Nest AS VARCHAR),
	CAST($Whatsov AS VARCHAR),
	CAST($Co2Grund AS VARCHAR),
	CAST($Co2Aend AS VARCHAR)
)
RETURNING
	Issue3834Table.Id,
	Issue3834Table.Nesto,
	Issue3834Table.Nest,
	Issue3834Table.WhatSov,
	Issue3834Table.Co2grund,
	Issue3834Table.Co2aend

