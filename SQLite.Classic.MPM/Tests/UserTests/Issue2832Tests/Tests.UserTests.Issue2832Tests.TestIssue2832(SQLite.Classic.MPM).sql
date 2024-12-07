(426206) SELECT 
	t426206.Id = t426205.Id
FROM [DctSetpointtype(426205)] as t426205 (spt)
		LEFT JOIN (
			[VWellTree(426208)] as t426208 (t2)
				INNER JOIN [DctOu(426210)] as t426210 (tp2) ON ({t426208.ShopId?}? = {t426210.Id})
				LEFT JOIN [UacUsersDatagroup(426213)] as t426213 (cudg) ON ({t426210.Id} = {t426213.DatagroupId} AND {t426213.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426218)] as t426218 (oudg) ON ({t426210.ParentId?}? = {t426218.DatagroupId} AND {t426218.UserId} = 150 AND {t426218.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426238)] as t426238 (d) ON ({t426208.WellId?}? = {t426238.WellId})
		)  ON ({t426238.SetpointtypeId} = {t426205.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426213.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426218.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
