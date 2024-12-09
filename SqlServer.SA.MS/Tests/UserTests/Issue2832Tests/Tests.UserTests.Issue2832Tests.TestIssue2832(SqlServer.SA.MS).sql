(491336) SELECT 
	t491336.Id = t491335.Id
FROM [DctSetpointtype(491335)] as t491335 (spt)
		LEFT JOIN (
			[VWellTree(491338)] as t491338 (t2)
				INNER JOIN [DctOu(491340)] as t491340 (tp2) ON ({t491338.ShopId?}? = {t491340.Id})
				LEFT JOIN [UacUsersDatagroup(491343)] as t491343 (cudg) ON ({t491340.Id} = {t491343.DatagroupId} AND {t491343.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491348)] as t491348 (oudg) ON ({t491340.ParentId?}? = {t491348.DatagroupId} AND {t491348.UserId} = 150 AND {t491348.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491368)] as t491368 (d) ON ({t491338.WellId?}? = {t491368.WellId})
		)  ON ({t491368.SetpointtypeId} = {t491335.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491343.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t491348.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
