(170516) SELECT 
	t170516.Id = t170515.Id
FROM [DctSetpointtype(170515)] as t170515 (spt)
		LEFT JOIN (
			(170553) SELECT 
				t170553.SetpointtypeId        = t170548.SetpointtypeId,
				t170553.Permission            = t170523.Permission?,
				t170553.Inheritablepermission = t170528.Inheritablepermission?
			FROM [VWellTree(170518)] as t170518 (t2)
					INNER JOIN [DctOu(170520)] as t170520 (tp2) ON ({t170518.ShopId?}? = {t170520.Id})
					LEFT JOIN [UacUsersDatagroup(170523)] as t170523 (cudg) ON ({t170520.Id} = {t170523.DatagroupId} AND {t170523.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(170528)] as t170528 (oudg) ON ({t170520.ParentId?}? = {t170528.DatagroupId} AND {t170528.UserId} = 150 AND {t170528.Inheritablepermission} > 0)
					INNER JOIN [Deviation(170548)] as t170548 (d) ON ({t170518.WellId?}? = {t170548.WellId})
		) as t170553 (t1) ON ({t170553.SetpointtypeId?} = {t170515.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t170553.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t170553.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
