(427919) SELECT 
	t427919.Id = t427918.Id
FROM [DctSetpointtype(427918)] as t427918 (spt)
		LEFT JOIN (
			[VWellTree(427921)] as t427921 (t2)
				INNER JOIN [DctOu(427923)] as t427923 (tp2) ON ({t427921.ShopId?}? = {t427923.Id})
				LEFT JOIN [UacUsersDatagroup(427926)] as t427926 (cudg) ON ({t427923.Id} = {t427926.DatagroupId} AND {t427926.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(427931)] as t427931 (oudg) ON ({t427923.ParentId?}? = {t427931.DatagroupId} AND {t427931.UserId} = 150 AND {t427931.Inheritablepermission} > 0)
				INNER JOIN [Deviation(427951)] as t427951 (d) ON ({t427921.WellId?}? = {t427951.WellId})
		)  ON ({t427951.SetpointtypeId} = {t427918.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t427926.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t427931.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
