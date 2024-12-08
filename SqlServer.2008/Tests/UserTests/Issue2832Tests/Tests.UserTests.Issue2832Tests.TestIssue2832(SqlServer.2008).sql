(239756) SELECT 
	t239756.Id = t239755.Id
FROM [DctSetpointtype(239755)] as t239755 (spt)
		LEFT JOIN (
			[VWellTree(239758)] as t239758 (t2)
				INNER JOIN [DctOu(239760)] as t239760 (tp2) ON ({t239758.ShopId?}? = {t239760.Id})
				LEFT JOIN [UacUsersDatagroup(239763)] as t239763 (cudg) ON ({t239760.Id} = {t239763.DatagroupId} AND {t239763.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239768)] as t239768 (oudg) ON ({t239760.ParentId?}? = {t239768.DatagroupId} AND {t239768.UserId} = 150 AND {t239768.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239788)] as t239788 (d) ON ({t239758.WellId?}? = {t239788.WellId})
		)  ON ({t239788.SetpointtypeId} = {t239755.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239763.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t239768.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
