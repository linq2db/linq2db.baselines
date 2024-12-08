(491533) SELECT 
	t491533.Id = t491532.Id
FROM [DctSetpointtype(491532)] as t491532 (spt)
		LEFT JOIN (
			[VWellTree(491535)] as t491535 (t2)
				INNER JOIN [DctOu(491537)] as t491537 (tp2) ON ({t491535.ShopId?}? = {t491537.Id})
				LEFT JOIN [UacUsersDatagroup(491540)] as t491540 (cudg) ON ({t491537.Id} = {t491540.DatagroupId} AND {t491540.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491545)] as t491545 (oudg) ON ({t491537.ParentId?}? = {t491545.DatagroupId} AND {t491545.UserId} = 150 AND {t491545.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491565)] as t491565 (d) ON ({t491535.WellId?}? = {t491565.WellId})
		)  ON ({t491565.SetpointtypeId} = {t491532.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491540.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t491545.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
