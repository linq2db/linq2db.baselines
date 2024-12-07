(488394) SELECT 
	t488394.Id = t488393.Id
FROM [DctSetpointtype(488393)] as t488393 (spt)
		LEFT JOIN (
			[VWellTree(488396)] as t488396 (t2)
				INNER JOIN [DctOu(488398)] as t488398 (tp2) ON ({t488396.ShopId?}? = {t488398.Id})
				LEFT JOIN [UacUsersDatagroup(488401)] as t488401 (cudg) ON ({t488398.Id} = {t488401.DatagroupId} AND {t488401.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(488406)] as t488406 (oudg) ON ({t488398.ParentId?}? = {t488406.DatagroupId} AND {t488406.UserId} = 150 AND {t488406.Inheritablepermission} > 0)
				INNER JOIN [Deviation(488426)] as t488426 (d) ON ({t488396.WellId?}? = {t488426.WellId})
		)  ON ({t488426.SetpointtypeId} = {t488393.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t488401.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t488406.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
