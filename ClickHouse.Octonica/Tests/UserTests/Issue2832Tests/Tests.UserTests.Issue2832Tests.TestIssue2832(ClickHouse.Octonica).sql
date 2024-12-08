(168540) SELECT 
	t168540.Id = t168539.Id
FROM [DctSetpointtype(168539)] as t168539 (spt)
		LEFT JOIN (
			(168577) SELECT 
				t168577.SetpointtypeId        = t168572.SetpointtypeId,
				t168577.Permission            = t168547.Permission?,
				t168577.Inheritablepermission = t168552.Inheritablepermission?
			FROM [VWellTree(168542)] as t168542 (t2)
					INNER JOIN [DctOu(168544)] as t168544 (tp2) ON ({t168542.ShopId?}? = {t168544.Id})
					LEFT JOIN [UacUsersDatagroup(168547)] as t168547 (cudg) ON ({t168544.Id} = {t168547.DatagroupId} AND {t168547.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168552)] as t168552 (oudg) ON ({t168544.ParentId?}? = {t168552.DatagroupId} AND {t168552.UserId} = 150 AND {t168552.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168572)] as t168572 (d) ON ({t168542.WellId?}? = {t168572.WellId})
		) as t168577 (t1) ON ({t168577.SetpointtypeId?} = {t168539.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168577.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168577.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
