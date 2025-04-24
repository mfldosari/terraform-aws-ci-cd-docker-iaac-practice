# terraform-aws-ci-cd-docker-iaac-practice

# 🤖 Simple Chatbot Deployment with CI/CD on AWS EC2

This project demonstrates how to deploy a **Streamlit-based chatbot** on an **AWS EC2 instance** using Docker, with automated **CI/CD via GitHub Actions**.

---

## 🛠️ Tech Stack

- **Python & Streamlit** – Chatbot UI and logic
- **OpenAI API** – To generate responses
- **Docker** – Containerization for easy deployment
- **GitHub Actions** – CI/CD pipeline for automation
- **AWS EC2** – Hosting the chatbot

---

## 📦 Features

- Streamlit chatbot UI with OpenAI GPT responses
- Dockerized for consistent environment
- GitHub Actions CI/CD:
  - On every `push` to `main`, test if the app boots successfully in Docker
  - SSH into EC2 and pull + restart the service
- Environment variables managed securely using `.env`

---

## 🚀 Deployment Architecture
![Preview](images/.png)
