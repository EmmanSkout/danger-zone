<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <title>Document</title>
</head>
<body>
<div class="bg-black">

    <!-- Navigation Bar -->
    @template.navigation()

    <div class="flex items-center justify-center min-h-screen">
        <div class="bg-white shadow-md rounded-lg p-4 max-w-lg w-full">
            <h2 class="text-2xl font-semibold text-center mb-4">Contact Us</h2>
            <form action="https://api.web3forms.com/submit" method="POST" class="space-y-4">
                <input type="hidden" name="access_key" value="1865839f-e499-401f-a78a-79dd49512803">

                <div>
                    <label for="name" class="block text-sm font-medium text-gray-700">Name:</label>
                    <input type="text" id="name" name="name" required
                           class="mt-1 p-2 w-full border rounded-md">
                </div>

                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700">Email:</label>
                    <input type="email" id="email" name="email" required
                           class="mt-1 p-2 w-full border rounded-md">
                </div>

                <div>
                    <label for="message" class="block text-sm font-medium text-gray-700">Message:</label>
                    <textarea id="message" name="message" required
                              class="mt-1 p-2 w-full border rounded-md"></textarea>
                </div>

                <div class="text-center">
                    <button type="submit" class="px-4 py-2 bg-blue-500 text-white rounded-md hover:bg-blue-600">
                        Submit
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
