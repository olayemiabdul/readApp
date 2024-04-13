import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuned_read/model/schedule_model.dart';
import 'package:tuned_read/widget/custom_card.dart';

import '../data/schedule_task.dart';

class Scheduled extends StatelessWidget {
  const Scheduled({super.key});

  @override
  Widget build(BuildContext context) {
    ScheduleTask scheduleTaskData=ScheduleTask();
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Scheduled',
        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
        const SizedBox(height: 12,),
        for (var index=0;
        index<scheduleTaskData.scheduled.length;index++)
          CustomCard(
            color: Colors.black,
            child: Column(
              children: [Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(scheduleTaskData.scheduled[index].title, style: const TextStyle(
                        fontSize: 12,fontWeight: FontWeight.w500
                      ),),
                      const SizedBox(height:2 ,),
                      Text(scheduleTaskData.scheduled[index].date, style: const TextStyle(
                          fontSize: 12,fontWeight: FontWeight.w500, color: Colors.grey,
                      ),),
                    ],
                  ),
                  const Icon(Icons.more)
                ],
              )],
            ))

      ],
    );
  }
}
