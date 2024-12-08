(205887) SELECT 
	t205887.Id = t205886.Id
FROM [DctSetpointtype(205886)] as t205886 (spt)
		LEFT JOIN (
			[VWellTree(205889)] as t205889 (t2)
				INNER JOIN [DctOu(205891)] as t205891 (tp2) ON ({t205889.ShopId?}? = {t205891.Id})
				LEFT JOIN [UacUsersDatagroup(205894)] as t205894 (cudg) ON ({t205891.Id} = {t205894.DatagroupId} AND {t205894.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205899)] as t205899 (oudg) ON ({t205891.ParentId?}? = {t205899.DatagroupId} AND {t205899.UserId} = 150 AND {t205899.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205919)] as t205919 (d) ON ({t205889.WellId?}? = {t205919.WellId})
		)  ON ({t205919.SetpointtypeId} = {t205886.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205894.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205899.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
