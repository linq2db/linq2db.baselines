(105975) SELECT 
	t105975.Id = t105974.Id
FROM [DctSetpointtype(105974)] as t105974 (spt)
		LEFT JOIN (
			[VWellTree(105977)] as t105977 (t2)
				INNER JOIN [DctOu(105979)] as t105979 (tp2) ON ({t105977.ShopId?}? = {t105979.Id})
				LEFT JOIN [UacUsersDatagroup(105982)] as t105982 (cudg) ON ({t105979.Id} = {t105982.DatagroupId} AND {t105982.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(105987)] as t105987 (oudg) ON ({t105979.ParentId?}? = {t105987.DatagroupId} AND {t105987.UserId} = 150 AND {t105987.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106007)] as t106007 (d) ON ({t105977.WellId?}? = {t106007.WellId})
		)  ON ({t106007.SetpointtypeId} = {t105974.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t105982.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t105987.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
