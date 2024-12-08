(168651) SELECT 
	t168651.Id = t168650.Id
FROM [DctSetpointtype(168650)] as t168650 (spt)
		LEFT JOIN (
			(168688) SELECT 
				t168688.SetpointtypeId        = t168683.SetpointtypeId,
				t168688.Permission            = t168658.Permission?,
				t168688.Inheritablepermission = t168663.Inheritablepermission?
			FROM [VWellTree(168653)] as t168653 (t2)
					INNER JOIN [DctOu(168655)] as t168655 (tp2) ON ({t168653.ShopId?}? = {t168655.Id})
					LEFT JOIN [UacUsersDatagroup(168658)] as t168658 (cudg) ON ({t168655.Id} = {t168658.DatagroupId} AND {t168658.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168663)] as t168663 (oudg) ON ({t168655.ParentId?}? = {t168663.DatagroupId} AND {t168663.UserId} = 150 AND {t168663.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168683)] as t168683 (d) ON ({t168653.WellId?}? = {t168683.WellId})
		) as t168688 (t1) ON ({t168688.SetpointtypeId?} = {t168650.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168688.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168688.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
