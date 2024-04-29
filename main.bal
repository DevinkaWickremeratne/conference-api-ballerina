import ballerina/http;

// In-memory dataset for conferences
json[] conferences = [
    {
        "id": 1,
        "name": "TechTrend Summit",
        "description": "Join us for the latest trends in technology innovation and digital transformation",
        "startDate": "2024-05-15",
        "endDate": "2024-05-17",
        "location": "San Francisco, CA",
        "speakers": ["John Doe", "Jane Smith"],
        "website": "https://techtrendsummit.com"
    },
    {
        "id": 2,
        "name": "FutureForward Conference",
        "description": "Explore groundbreaking ideas and emerging technologies shaping the future.",
        "startDate": "2024-06-10",
        "endDate": "2024-06-12",
        "location": "New York, NY",
        "speakers": ["Emily Johnson", "Mark Davis"],
        "website": "https://futureforwardconference.com"
    },
    {
        "id": 3,
        "name": "GlobalLeaders Forum",
        "description": "Connect with industry leaders from around the world to discuss pressing global challenges.",
        "startDate": "2024-07-20",
        "endDate": "2024-07-22",
        "location": "London, UK",
        "speakers": ["Michael Johnson", "Sarah Lee"],
        "website": "https://globalleadersforum.com"
    },
    {
        "id": 4,
        "name": "DataDriven Summit",
        "description": "Unlock the power of data analytics and artificial intelligence to drive business success.",
        "startDate": "2024-08-15",
        "endDate": "2024-08-17",
        "location": "Tokyo, Japan",
        "speakers": ["Yuki Yamamoto", "Takeshi Tanaka"],
        "website": "https://datadrivensummit.com"
    },
    {
        "id": 5,
        "name": "InnovateX Expo",
        "description": "Discover the latest innovations and disruptive technologies revolutionizing industries.",
        "startDate": "2024-09-10",
        "endDate": "2024-09-12",
        "location": "Berlin, Germany",
        "speakers": ["Lena Müller", "Max Fischer"],
        "website": "https://innovatexexpo.com"
    },
    {
        "id": 6,
        "name": "HealthTech Conference",
        "description": "Explore the intersection of healthcare and technology to improve patient outcomes.",
        "startDate": "2024-10-20",
        "endDate": "2024-10-22",
        "location": "Paris, France",
        "speakers": ["Sophie Martin", "Lucas Dupont"],
        "website": "https://healthtechconference.com"
    },
    {
        "id": 7,
        "name": "GreenTech Summit",
        "description": "Learn about sustainable solutions and environmentally-friendly technologies shaping our future.",
        "startDate": "2024-11-15",
        "endDate": "2024-11-17",
        "location": "Sydney, Australia",
        "speakers": ["Emma Wilson", "James Roberts"],
        "website": "https://greentechsummit.com"
    },
    {
        "id": 8,
        "name": "FinanceForum",
        "description": "Gain insights into the latest trends and developments in finance and investment strategies.",
        "startDate": "2025-01-10",
        "endDate": "2025-01-12",
        "location": "Singapore",
        "speakers": ["Michael Johnson", "Sarah Lee"],
        "website": "https://financeforum.com"
    },
    {
        "id": 9,
        "name": "AI Summit",
        "description": "Explore the cutting-edge advancements and applications of artificial intelligence.",
        "startDate": "2025-02-20",
        "endDate": "2025-02-22",
        "location": "Beijing, China",
        "speakers": ["Wei Li", "Chen Zhang"],
        "website": "https://aisummit.com"
    },
    {
        "id": 10,
        "name": "SpaceTech Conference",
        "description": "Discover the future of space exploration and satellite technology.",
        "startDate": "2025-03-15",
        "endDate": "2025-03-17",
        "location": "Houston, TX",
        "speakers": ["Emily Johnson", "John Smith"],
        "website": "https://spacetechconference.com"
    }
];

listener http:Listener httpListener = new (9090);

// GET - Retrieve all conferences
service / on httpListener {

     resource function get conferences() returns json { 
        return conferences; 
    }

    resource function get conferences/[int id]() returns json { 
         foreach var conference in conferences {
            if (conference.id == id) {
                return conference;
            }
        }
        return ();
    }
}

