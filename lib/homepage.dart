import 'package:ecommerce_app_design/itemsdetails.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bestsales = [
    {
      "imagename": "images/apple1.jpg",
      "title": "Apple 13.6 MacBook Air",
      "price": "1,685,000 IQD",
      "description":
          "Apple M3 8-Core Chip 8GB Unified RAM | 256GB SSD13.6 2560 x 1664 Liquid Retina Display8-Core GPU | 16-Core Neural EngineWi-Fi 6E (802.11ax) | Bluetooth 5.32 x Thunderbolt / USB4FaceTime Full HD 1080p CameraBacklit Magic KeyboardForce Touch Trackpad | Touch ID SensormacOS"
    },
    {
      "imagename": "images/asus1.jpg",
      "title": "ASUS TUF Gaming F17 FX707VU",
      "price": "1,499,000 IQD",
      "description":
          "13th Gen Intel® Core™ i7-13620H ProcessorNVIDIA® GeForce RTX™ 4050 Laptop GPU, 2420MHz* at 140W (2370MHz Boost Clock+50MHz OC, 115W+25W Dynamic Boost), 6GB GDDR616GB DDR4-3200 SO-DIMM, Max Capacity:32GB, Support dual channel memory1TB PCIe® 4.0 NVMe™ M.2 SSD17.3 FHD (1920 x 1080) 16:9, Value IPS-level, Anti-glare display, sRGB:62.50%, Adobe:47.34%, Refresh Rate:144Hz, G-Sync, MUX Switch + NVIDIA® Advanced Optimus"
    },
    {
      "imagename": "images/lenovo1.jpg",
      "title": "Lenovo Legion Pro 7 16IRX9H",
      "price": "5,150,000 IQD",
      "description":
          "Intel® Core™ i9-14900HX, 24C (8P + 16E) / 32T, P-core 2.2 / 5.8GHz, E-core 1.6 / 4.1GHz, 36MBNVIDIA® GeForce RTX™ 4090 16GB GDDR6, Boost Clock 2040MHz, TGP 175W32GB (2x 16GB) SO-DIMM DDR5-5600 Up to 32GB DDR5-5600 offering1TB SSD M.2 2280 PCIe® 4.0x4 NVMe®16 WQXGA (2560x1600) IPS 500nits Anti-glare, 100% DCI-P3, 240Hz, DisplayHDR™ 400, Dolby® Vision™, G-SYNC®, Low Blue Light, High Gaming Performance"
    },
  ];
  List bestoffers = [
    {
      "imagename": "images/msi3.jpg",
      "title": "MSI Creator 16 AI Studio A1VHG-008AE",
      "price": "4,999,000 IQD",
      "description":
          "Intel Core Ultra 9 185HNVIDIA® GeForce RTX™ 4080 Laptop GPU 12GB GDDR6 Up to 1665MHz Boost Clock 105W Maximum Graphics Power with Dynamic Boost. *May vary by scenario32GB (16GB*2) DDR5-5600 Max 96GB1TB NVMe PCIe Gen4 2x M.2 SSD slot (NVMe PCIe Gen4)16 16:10 UHD+ (3840x2400), MiniLED, 120Hz, 100% DCI-P3 (Typ.), IPS-level panel"
    },
    {
      "imagename": "images/msi1.jpg",
      "title": "MSI Creator M16 HX C14VFG-028XAE",
      "price": "2,499,000 IQD",
      "description":
          "Intel® Core™ i7-14700HX ProcessorNVIDIA® GeForce RTX™ 4060 Laptop GPU 8GB GDDR6 Up to 1470MHz Boost Clock 60W Maximum Graphics Power with Dynamic Boost. *May vary by scenario16GB (8GB*2) DDR5-5600 Max 96GB1TB NVMe PCIe Gen4x4 SSD16 16:10 QHD+(2560 x 1600), 240Hz, 100% DCI-P3, IPS-level panel"
    },
    {
      "imagename": "images/hp1.jpg",
      "title": "HP Laptop 15-fc0004ne 15.6",
      "price": "725,000 IQD",
      "description":
          "AMD Ryzen™ 5 7520U (up to 4.3 GHz max boost clock, 4 MB L3 cache, 4 cores, 8 threads)AMD Radeon™ Graphics8 GB LPDDR5-5500 MHz RAM (onboard)512 GB PCIe® NVMe™ M.2 SSD15.6 diagonal, FHD (1920 x 1080), micro-edge, anti-glare, 250 nits, 45% NTSC"
    },
    {
      "imagename": "images/msi2.jpg",
      "title": "MSI Modern 15 B12MO 15.6",
      "price": "899,000 IQD",
      "description":
          "Intel Core i7-1255UIntel® Iris® Xe graphics8GB DDR4-3200512GB NVMe PCIe Gen3x4 SSD w/o DRAM15.6 FHD (1920x1080), IPS-Level"
    },
    {
      "imagename": "images/hp2.jpg",
      "title": "HP ProBook 450 G10 15.6",
      "price": "990,000 IQD",
      "description":
          "Intel® Core™ i5-1335U (up to 4.6 GHz with Intel® Turbo Boost Technology, 12 MB L3 cache, 10 cores, 12 threads)NVIDIA® GeForce RTX™ 2050 Laptop GPU (4 GB GDDR6 dedicated)8 GB DDR4-3200 MHz RAM (1 x 8 GB)512 GB PCIe® NVMe™ SSD15.6 diagonal, FHD (1920 x 1080), IPS, narrow bezel, anti-glare, 250 nits, 45% NTSC"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: const[],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 90,
          ),
          Row(
            children: [
              Container(
                width: 15,
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(colors: [
                    Colors.white,
                    Color.fromARGB(255, 221, 221, 221),
                  ], end: Alignment.bottomLeft, begin: Alignment.topRight),
                ),
                alignment: Alignment.center,
                child: Builder(builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu),
                    iconSize: 30,
                  );
                }),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Our Products",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 140,
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(colors: [
                    Colors.white,
                    Color.fromARGB(255, 217, 216, 216),
                  ], end: Alignment.bottomLeft, begin: Alignment.topRight),
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  iconSize: 30,
                ),
              )
            ],
          ),
          Container(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Top Sales",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 330,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bestsales.length,
              itemBuilder: (context, i) {
                return Card(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ItemsDetails(
                          data: bestsales[i],
                        ),
                      ));
                    },
                    child: Container(
                      width: 230,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  bestsales[i]["imagename"],
                                  width: 230,
                                )),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 100,
                                  child: Text(
                                    bestsales[i]["title"],
                                    style: const TextStyle(fontSize: 11),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 65),
                                child: Image.asset(
                                  "images/cart.png",
                                  width: 40,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              bestsales[i]["price"],
                              style: const TextStyle(
                                  color: Colors.green, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Best Offers",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
          Container(
            height: 410,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(300),
              ),
            ),
            alignment: Alignment.center,
            child: Container(
              height: 410,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(1000),
                ),
              ),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: bestoffers.length,
                itemBuilder: (context, i) {
                  return Card(
                    // color: Colors.green,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ItemsDetails(
                              data: bestoffers[i],
                            ),
                          ),
                        );
                      },
                      child: SizedBox(
                        width: 400,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.asset(
                                bestoffers[i]["imagename"],
                                width: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: SizedBox(
                                  width: 130,
                                  child: Text(bestoffers[i]["title"])),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Text(
                                bestoffers[i]["price"],
                                style: const TextStyle(
                                    color: Colors.green, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
