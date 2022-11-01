import 'package:final_630710782_2/team.dart';
import 'package:flutter/material.dart';


var teamList = [
  Team(id: 1, team: 'Qatar', group: 'A',flagImage: 'http://103.74.252.66:8888/flag_images/a_qatar.png'),
  Team(id: 2, team: 'Ecuador', group: 'A',flagImage: 'http://103.74.252.66:8888/flag_images/a_ecuador.png'),
  Team(id: 3, team: 'Senegal', group: 'A',flagImage: 'http://103.74.252.66:8888/flag_images/a_senegal.png'),
  Team(id: 4, team: 'Netherlands', group: 'A',flagImage: 'http://103.74.252.66:8888/flag_images/a_netherlands.png'),
  Team(id: 5, team: 'England', group: 'B',flagImage: 'http://103.74.252.66:8888/flag_images/b_england.png'),
  Team(id: 6, team: 'IR Iran', group: 'B',flagImage: 'http://103.74.252.66:8888/flag_images/b_ir_iran.png'),
  Team(id: 7, team: 'USA', group: 'B',flagImage: 'http://103.74.252.66:8888/flag_images/b_usa.png'),
  Team(id: 8, team: 'Wales', group: 'B',flagImage: 'http://103.74.252.66:8888/flag_images/b_wales.png'),
  Team(id: 9, team: 'Argentina', group: 'C',flagImage: 'http://103.74.252.66:8888/flag_images/c_argentina.png'),
  Team(id: 10, team: 'Saudi Arabia', group: 'C',flagImage: 'http://103.74.252.66:8888/flag_images/c_saudi_arabia.png'),
  Team(id: 11, team: 'Mexico', group: 'C',flagImage: 'http://103.74.252.66:8888/flag_images/c_mexico.png'),
  Team(id: 12, team: 'Poland', group: 'C',flagImage: 'http://103.74.252.66:8888/flag_images/c_poland.png'),
  Team(id: 13, team: 'France', group: 'D',flagImage: 'http://103.74.252.66:8888/flag_images/d_france.png'),
  Team(id: 14, team: 'Australia', group: 'D',flagImage: 'http://103.74.252.66:8888/flag_images/d_australia.png'),
  Team(id: 15, team: 'Denmark', group: 'D',flagImage: 'http://103.74.252.66:8888/flag_images/d_denmark.png'),
  Team(id: 16, team: 'Tunisia', group: 'D',flagImage: 'http://103.74.252.66:8888/flag_images/d_tunisia.png'),
  Team(id: 17, team: 'Spain', group: 'E',flagImage: 'http://103.74.252.66:8888/flag_images/e_spain.png'),
  Team(id: 18, team: 'Costa Rica', group: 'E',flagImage: 'http://103.74.252.66:8888/flag_images/e_costa_rica.png'),
  Team(id: 19, team: 'Germany', group: 'E',flagImage: 'http://103.74.252.66:8888/flag_images/e_germany.png'),
  Team(id: 20, team: 'Japan', group: 'E',flagImage: 'http://103.74.252.66:8888/flag_images/e_japan.png'),
  Team(id: 21, team: 'Belgium', group: 'F',flagImage: 'http://103.74.252.66:8888/flag_images/f_belgium.png'),
  Team(id: 22, team: 'Canada', group: 'F',flagImage: 'http://103.74.252.66:8888/flag_images/f_canada.png'),
  Team(id: 23, team: 'Morocco', group: 'F',flagImage: 'http://103.74.252.66:8888/flag_images/f_morocco.png'),
  Team(id: 24, team: 'Croatia', group: 'F',flagImage: 'http://103.74.252.66:8888/flag_images/f_croatia.png'),
  Team(id: 25, team: 'Brazil', group: 'G',flagImage: 'http://103.74.252.66:8888/flag_images/g_brazil.png'),
  Team(id: 26, team: 'Serbia', group: 'G',flagImage: 'http://103.74.252.66:8888/flag_images/g_serbia.png'),
  Team(id: 27, team: 'Switzerland', group: 'G',flagImage: 'http://103.74.252.66:8888/flag_images/g_switzerland.png'),
  Team(id: 28, team: 'Cameroon', group: 'G',flagImage: 'http://103.74.252.66:8888/flag_images/g_cameroon.png'),
  Team(id: 29, team: 'Portugal', group: 'H',flagImage: 'http://103.74.252.66:8888/flag_images/h_portugal.png'),
  Team(id: 30, team: 'Ghana', group: 'H',flagImage: 'http://103.74.252.66:8888/flag_images/h_ghana.png'),
  Team(id: 31, team: 'Uruguay', group: 'H',flagImage: 'http://103.74.252.66:8888/flag_images/h_uruguay.png'),
  Team(id: 32, team: 'Korea Republic', group: 'H',flagImage: 'http://103.74.252.66:8888/flag_images/h_korea_republic.png'),

];

class TeamListPsge extends StatefulWidget {
  const TeamListPsge({Key? key}) : super(key: key);

  @override
  State<TeamListPsge> createState() => _TeamListPsgeState();
}

class _TeamListPsgeState extends State<TeamListPsge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder( ///////คล้ายสร้างลูป//รายการอาหารที่เลื่อนได้
          itemBuilder: (BuildContext context,int i){
            var team = teamList[i];
            return Card( //card=กรอบสี่เหลี่ยมรอบข้อความ
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        //Icon(Icons.fastfood_outlined, size: 80.0,),
                        Image.network(team.flagImage,width: 80,),
                        //Image.asset('assets/images/${food.imageUrl}', width: 100.0,height:100.0,fit: BoxFit.cover,),
                        SizedBox(width: 16.0,),
                        Expanded( //อยู่ในrow จะยืดออกในแนวนอน แต่ถ้าอยู่ใน colum ยืดแนวตั้ง ยืดเต็ม
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, //ชิดซ้าย
                            children: [
                              Text(team.team, style: TextStyle(fontSize: 20.0),),
                              Text('Goup '+team.group),
                            ],
                          ),
                        ),//ถ้าใส่ Expanded 2 อันจะยืดแบบแบ่งคนละครึ่ง
                        ElevatedButton(onPressed: (){}, child: Text('VOTE'),
                          style: OutlinedButton.styleFrom(
                          //ปุ่ม
                            backgroundColor: Colors.red.shade600),)
                      ],
                    ),
                  ),
                );

          },
          itemCount: teamList.length), //กำหนดจำนวนครั้ง



    );
  }
}
