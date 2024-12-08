(170540) SELECT 
	t170540.Id = t170539.Id
FROM [DctSetpointtype(170539)] as t170539 (spt)
		LEFT JOIN (
			(170577) SELECT 
				t170577.SetpointtypeId        = t170572.SetpointtypeId,
				t170577.Permission            = t170547.Permission?,
				t170577.Inheritablepermission = t170552.Inheritablepermission?
			FROM [VWellTree(170542)] as t170542 (t2)
					INNER JOIN [DctOu(170544)] as t170544 (tp2) ON ({t170542.ShopId?}? = {t170544.Id})
					LEFT JOIN [UacUsersDatagroup(170547)] as t170547 (cudg) ON ({t170544.Id} = {t170547.DatagroupId} AND {t170547.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(170552)] as t170552 (oudg) ON ({t170544.ParentId?}? = {t170552.DatagroupId} AND {t170552.UserId} = 150 AND {t170552.Inheritablepermission} > 0)
					INNER JOIN [Deviation(170572)] as t170572 (d) ON ({t170542.WellId?}? = {t170572.WellId})
		) as t170577 (t1) ON ({t170577.SetpointtypeId?} = {t170539.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t170577.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t170577.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
