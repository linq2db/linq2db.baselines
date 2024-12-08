(318482) SELECT 
	t318482.Id = t318481.Id
FROM [DctSetpointtype(318481)] as t318481 (spt)
		LEFT JOIN (
			[VWellTree(318484)] as t318484 (t2)
				INNER JOIN [DctOu(318486)] as t318486 (tp2) ON ({t318484.ShopId?}? = {t318486.Id})
				LEFT JOIN [UacUsersDatagroup(318489)] as t318489 (cudg) ON ({t318486.Id} = {t318489.DatagroupId} AND {t318489.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318494)] as t318494 (oudg) ON ({t318486.ParentId?}? = {t318494.DatagroupId} AND {t318494.UserId} = 150 AND {t318494.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318514)] as t318514 (d) ON ({t318484.WellId?}? = {t318514.WellId})
		)  ON ({t318514.SetpointtypeId} = {t318481.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318489.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318494.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
