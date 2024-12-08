(491365) SELECT 
	t491365.Id = t491364.Id
FROM [DctSetpointtype(491364)] as t491364 (spt)
		LEFT JOIN (
			[VWellTree(491367)] as t491367 (t2)
				INNER JOIN [DctOu(491369)] as t491369 (tp2) ON ({t491367.ShopId?}? = {t491369.Id})
				LEFT JOIN [UacUsersDatagroup(491372)] as t491372 (cudg) ON ({t491369.Id} = {t491372.DatagroupId} AND {t491372.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491377)] as t491377 (oudg) ON ({t491369.ParentId?}? = {t491377.DatagroupId} AND {t491377.UserId} = 150 AND {t491377.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491397)] as t491397 (d) ON ({t491367.WellId?}? = {t491397.WellId})
		)  ON ({t491397.SetpointtypeId} = {t491364.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491372.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t491377.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
