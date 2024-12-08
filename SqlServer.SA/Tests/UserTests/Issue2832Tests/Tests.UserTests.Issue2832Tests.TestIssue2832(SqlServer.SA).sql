(491248) SELECT 
	t491248.Id = t491247.Id
FROM [DctSetpointtype(491247)] as t491247 (spt)
		LEFT JOIN (
			[VWellTree(491250)] as t491250 (t2)
				INNER JOIN [DctOu(491252)] as t491252 (tp2) ON ({t491250.ShopId?}? = {t491252.Id})
				LEFT JOIN [UacUsersDatagroup(491255)] as t491255 (cudg) ON ({t491252.Id} = {t491255.DatagroupId} AND {t491255.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491260)] as t491260 (oudg) ON ({t491252.ParentId?}? = {t491260.DatagroupId} AND {t491260.UserId} = 150 AND {t491260.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491280)] as t491280 (d) ON ({t491250.WellId?}? = {t491280.WellId})
		)  ON ({t491280.SetpointtypeId} = {t491247.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491255.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t491260.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
