(488316) SELECT 
	t488316.Id = t488315.Id
FROM [DctSetpointtype(488315)] as t488315 (spt)
		LEFT JOIN (
			[VWellTree(488318)] as t488318 (t2)
				INNER JOIN [DctOu(488320)] as t488320 (tp2) ON ({t488318.ShopId?}? = {t488320.Id})
				LEFT JOIN [UacUsersDatagroup(488323)] as t488323 (cudg) ON ({t488320.Id} = {t488323.DatagroupId} AND {t488323.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(488328)] as t488328 (oudg) ON ({t488320.ParentId?}? = {t488328.DatagroupId} AND {t488328.UserId} = 150 AND {t488328.Inheritablepermission} > 0)
				INNER JOIN [Deviation(488348)] as t488348 (d) ON ({t488318.WellId?}? = {t488348.WellId})
		)  ON ({t488348.SetpointtypeId} = {t488315.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t488323.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t488328.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
